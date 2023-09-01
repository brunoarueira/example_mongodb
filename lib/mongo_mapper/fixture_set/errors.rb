module MongoMapper
  class FixtureSet
    class FixtureError < MongoMapper::Error
    end

    class FixtureNotFound < FixtureError
    end

    class FormatError < FixtureError
    end

    class FixtureClassNotFound < FixtureError
    end
  end
end
