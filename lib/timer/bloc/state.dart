part of '_bloc.dart';

abstract class TimerState extends Equatable {
  final int duration;
  const TimerState(this.duration);
  List<Object> get props => [duration];
}

// TimerInitial — ready to start counting down from the specified duration.
class TimerInitial extends TimerState {
  TimerInitial(int duration) : super(duration);

  String toString() => 'TimerInitial: {duration: $duration}';
}

// TimerRunPause — paused at some remaining duration.
class TimerRunPause extends TimerState {
  TimerRunPause(int duration) : super(duration);

  String toString() => 'TimerRunPause {duration: $duration}';
}

// TimerRunInProgress — actively counting down from the specified duration.
class TimerRunInProgress extends TimerState {
  TimerRunInProgress(int duration) : super(duration);

  String toString() => 'TimerRunInProgress: {duration $duration}';
}

// TimerRunComplete — completed with a remaining duration of 0.
class TimerRunComplete extends TimerState {
  const TimerRunComplete() : super(0);
}
