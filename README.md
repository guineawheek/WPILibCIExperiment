# CI experimentation

This entire repo exists to experiment with GitHub Actions as applied to robot projects and vendordeps.

## Why?

Well, what if you wanted to check if your robot projects compiled in CI? Well, this is a way to do it...I guess

## How does it work?

You add the Maven output directory of the vendordep `build.gradle`:

```groovy
// This adds the built vendor template to the thing
repositories {
    maven {
        name 'LocalVdepBuild'
        url new File(rootDir, "vendor-template/build/repos/releases")
    }
}
```

Then you build the vendordep followed by the robot project.

```bash
cd vendor-template && ./gradlew publish
./gradlew build
```
And that's it!

Presumably you could also simulate the robot too. 