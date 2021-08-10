part of '_bloc.dart';

abstract class TimerEvent extends Equatable {
  const TimerEvent();

  List<Object> get props => [];
}

// TimerStarted — informs the TimerBloc that the timer should be started.
class TimerStarted extends TimerEvent {
  final int duration;
  const TimerStarted({required this.duration});
}

// TimerPaused — informs the TimerBloc that the timer should be paused.
class TimerPause extends TimerEvent {
  const TimerPause();
}

// TimerResumed — informs the TimerBloc that the timer should be resumed.
class TimerResumed extends TimerEvent {
  const TimerResumed();
}

// TimerReset — informs the TimerBloc that the timer should be reset to the original state.
class TimerReset extends TimerEvent {
  const TimerReset();
}

// TimerTicked — informs the TimerBloc that a tick has occurred and that it needs to update its state accordingly.
class TimerTicked extends TimerEvent {
  final int duration;
  const TimerTicked({required this.duration});

  List<Object> get props => [duration];
}
